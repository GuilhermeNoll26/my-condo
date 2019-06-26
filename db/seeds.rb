# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create email: 'a@a', password: '123456'
User.create email: 'admin@mycondo.com', password: '123456'

Person.create name: 'Guilherme Noll', type_person: 'Física', document: '102.944.419-64'
Person.create name: 'Graziela Schmitz', type_person: 'Física', document: '112.946.969-71'
Person.create name: 'Yukihiro Matsumoto', type_person: 'Física', document: '935.438.774-74'
Person.create name: 'Lojinha da Esquina', type_person: 'Jurídica', document: '43.565.643/0001-67'
Person.create name: 'João do Mato', type_person: 'Física', document: '523.685.541-25'
Person.create name: 'Crefisa', type_person: 'Jurídica', document: '87.756.589/0001-43'

Apartament.create number:101, ocupation_status:'Ocupado', notes:'3 quartos - não mobiliado', person_tenant:Person.find(1), person_owner:Person.find(1)
Apartament.create number:102, ocupation_status:'Ocupado', notes:'2 quartos - mobiliado', person_tenant:Person.find(4), person_owner:Person.find(5)
Apartament.create number:103, ocupation_status:'Ocupado', notes:'1 quarto - não mobiliado', person_tenant:Person.find(3), person_owner:Person.find(6)
Apartament.create number:104, ocupation_status:'Vazio', notes:'3 quartos - não mobiliado', person_tenant:Person.find(3), person_owner:Person.find(2)

Cashier.create description: 'CAIXA - PRINCIPAL', balance: 535.00
Cashier.create description: 'CONTA CORRENTE - BRADESCO', balance: 1255.00

CondoBill.create reference_month:'05/2019', value:88.35, paid:false, apartament_id:1, destination_cashier_id:1, notes:''
CondoBill.create reference_month:'05/2019', value:238.35, paid:false, apartament_id:2, destination_cashier_id:2, notes:''
CondoBill.create reference_month:'05/2019', value:473.35, paid:false, apartament_id:3, destination_cashier_id:1, notes:''
CondoBill.create reference_month:'05/2019', value:88.35, paid:false, apartament_id:4, destination_cashier_id:1, notes:''

Entry.create description: 'Limpeza interna', value:85.00, reference_month:'05/2019', due_date:nil, apartament:nil, cashier:nil, notes:'', paid:true
Entry.create description: 'Água', value:128.84, reference_month:'05/2019', due_date:nil, apartament:nil, cashier:nil, notes:'', paid:true
Entry.create description: 'Gás', value:89.58, reference_month:'05/2019', due_date:nil, apartament:nil, cashier:nil, notes:'', paid:true
Entry.create description: 'Conserto porta trasiera', value:150.00, reference_month:'05/2019', due_date:nil, apartament_id:2, cashier:nil, notes:'Filho do morador danificou a porta', paid:true
Entry.create description: 'Conserto portao eletronico', value:385.00, reference_month:'05/2019', due_date:nil, apartament_id:3, cashier:nil, notes:'Morador bateu no portão', paid:true