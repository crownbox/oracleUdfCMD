//���������������Ҵ�������ͨ��link����Զ�����ݿ��UDF����

create  OR REPLACE trigger tigertest
after INSERT OR DELETE OR UPDATE
ON GWSSI_CS ����
FOR EACH ROW 
BEGIN
      IF inserting THEN
        -- insert into GWSSI_CS@ORCL (id,varchar_1,number_1) values (java_encrypt(:NEW.ID),:old.varchar_1,java_encrypt(:new.number_1));
        insert into GWSSI_CS@ORCL (id,varchar_1,number_1) values ((:new.ID),:new.varchar_1,
        java_encrypt@orcl(:new.number_1));
      ELSIF updating THEN
        update GWSSI_CS@ORCL set id = java_encrypt(:NEW.ID),varchar_1=:new.varchar_1,number_1=:new.number_1
           where id = :old.id;
      END IF;
END TRI_GRADING;