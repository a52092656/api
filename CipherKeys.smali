# classes.dex

.class public abstract Lcom/tdo/showbox/http/CipherKeys;
.super Ljava/lang/Object;
.source "CipherKeys.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private iv:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tdo/showbox/http/CipherKeys;->appKey:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/tdo/showbox/http/CipherKeys;->key:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/tdo/showbox/http/CipherKeys;->iv:Ljava/lang/String;

    return-void
.end method

.method public static getCiperKeys()Lcom/tdo/showbox/http/CipherKeys;
    .registers 1

    .line 24
    new-instance v0, Lcom/tdo/showbox/http/StoneCipherKeys;

    invoke-direct {v0}, Lcom/tdo/showbox/http/StoneCipherKeys;-><init>()V

    return-object v0
.end method

.method public static getDefaultKeys()Lcom/tdo/showbox/http/CipherKeys;
    .registers 1

    .line 20
    invoke-static {}, Lcom/tdo/showbox/http/CipherKeys;->getCiperKeys()Lcom/tdo/showbox/http/CipherKeys;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/tdo/showbox/http/CipherKeys;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIv()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/tdo/showbox/http/CipherKeys;->iv:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/tdo/showbox/http/CipherKeys;->key:Ljava/lang/String;

    return-object v0
.end method
