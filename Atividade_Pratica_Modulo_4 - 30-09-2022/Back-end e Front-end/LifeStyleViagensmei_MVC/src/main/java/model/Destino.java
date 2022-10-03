package model;

public class Destino {
    private String iddestino;
    private String origem;
    private String destino;
    private String idaData;
    private String voltaData;
    private String hotel;
    private String linhaArea;
    private double valor;
    private String promocoes_idpromocoes;
    
    public Destino() {
        super();
        
    }
    
    public Destino(String iddestino, String origem, String destino, String idaData, String voltaData, String hotel,
            String linhaArea, double valor, String promocoes_idpromocoes) {
        super();
        this.iddestino = iddestino;
        this.origem = origem;
        this.destino = destino;
        this.idaData = idaData;
        this.voltaData = voltaData;
        this.hotel = hotel;
        this.linhaArea = linhaArea;
        this.valor = valor;
        this.promocoes_idpromocoes = promocoes_idpromocoes;
    }




    public String getIddestino() {
        return iddestino;
    }
    public void setIddestino(String iddestino) {
        this.iddestino = iddestino;
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
    public String getPromocoes_idpromocoes() {
        return promocoes_idpromocoes;
    }
    public void setPromocoes_idpromocoes(String promocoes_idpromocoes) {
        this.promocoes_idpromocoes = promocoes_idpromocoes;
    }
    
    
}
