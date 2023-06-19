# classes3.dex

.class public abstract Lcom/tdo/showbox/http/StringCallBack;
.super Lcom/tdo/showbox/http/BaseCallback;
.source "StringCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tdo/showbox/http/BaseCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private claz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tdo/showbox/view/listener/IViewController;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tdo/showbox/view/listener/IViewController;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/tdo/showbox/http/BaseCallback;-><init>(Lretrofit2/Call;Lcom/tdo/showbox/view/listener/IViewController;)V

    .line 26
    iput-object p2, p0, Lcom/tdo/showbox/http/StringCallBack;->claz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/tdo/showbox/http/BaseCallback;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tdo/showbox/http/StringCallBack;->claz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lretrofit2/Call;Lcom/tdo/showbox/view/listener/IViewController;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tdo/showbox/view/listener/IViewController;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tdo/showbox/http/BaseCallback;-><init>(Lretrofit2/Call;Lcom/tdo/showbox/view/listener/IViewController;)V

    .line 31
    iput-object p3, p0, Lcom/tdo/showbox/http/StringCallBack;->claz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lretrofit2/Call;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, p2}, Lcom/tdo/showbox/http/StringCallBack;-><init>(Lretrofit2/Call;Lcom/tdo/showbox/view/listener/IViewController;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public abstract onParsed(Lcom/tdo/showbox/http/BaseResponse;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tdo/showbox/http/BaseResponse<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)Z
    .registers 2

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tdo/showbox/http/StringCallBack;->onResponse(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onResponse(Ljava/lang/String;)Z
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/tdo/showbox/http/StringCallBack;->claz:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/tdo/showbox/http/HttpUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/tdo/showbox/http/BaseResponse;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 39
    invoke-virtual {p0, p1}, Lcom/tdo/showbox/http/StringCallBack;->onParsed(Lcom/tdo/showbox/http/BaseResponse;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
