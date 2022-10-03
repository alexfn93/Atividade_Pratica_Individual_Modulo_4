package model;

public class Promocoes {
    private String idpromocoes;
    private String origem;
    private String destino;
    private String idaData;
    private String voltaData;
    private String hotel;
    private String linhaArea;
    private double valor;
    private double desconto;
    
    public Promocoes() {
        super();
    
    }
    
    public Promocoes(String idpromocoes, String origem, String destino, String idaData, String voltaData, String hotel,
            String linhaArea, double valor, double desconto) {
        super();
        this.idpromocoes = idpromocoes;
        this.origem = origem;
        this.destino = destino;
        this.idaData = idaData;
        this.voltaData = voltaData;
        this.hotel = hotel;
        this.linhaArea = linhaArea;
        this.valor = valor;
        this.desconto = desconto;
    }

    public String getIdpromocoes() {
        return idpromocoes;
    }
    public void setIdpromocoes(String idpromocoes) {
        this.idpromocoes = idpromocoes;
    }
    public String getOrigem() {
        return origem;
    }
    public void setOrigem(String origem) {
        this.origem = origem;
    }
    public String getDestino() {
        return destino;
    }
    public void setDestino(String destino) {
        this.destino = destino;
    }
    public String getIdaData() {
        return idaData;
    }
    public void setIdaData(String idaData) {
        this.idaData = idaData;
    }
    public String getVoltaData() {
        return voltaData;
    }
    public void setVoltaData(String voltaData) {
        this.voltaData = voltaData;
    }
    public String getHotel() {
        return hotel;
    }
    public void setHotel(String hotel) {
        this.hotel = hotel;
    }
    public String getLinhaArea() {
        return linhaArea;
    }
    public void setLinhaArea(String linhaArea) {
        this.linhaArea = linhaArea;
    }
    public double getValor() {
        return valor;
    }
    public void setValor(double valor) {
        this.valor = valor;
    }
    public double getDesconto() {
        return desconto;
    }
    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }
    
}


