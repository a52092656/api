# classes3.dex

.class final Lcom/tdo/showbox/http/Http$3;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/Http;->get(Ljava/lang/String;Ljava/util/Map;Lcom/tdo/showbox/http/RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tdo/showbox/http/RequestCallback;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/RequestCallback;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/tdo/showbox/http/Http$3;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .line 391
    iget-object p1, p0, Lcom/tdo/showbox/http/Http$3;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz p1, :cond_14

    .line 393
    invoke-virtual {p2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/tdo/showbox/http/Http$3$1;

    invoke-direct {v0, p0, p1}, Lcom/tdo/showbox/http/Http$3$1;-><init>(Lcom/tdo/showbox/http/Http$3;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 406
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 408
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 409
    iget-object p2, p0, Lcom/tdo/showbox/http/Http$3;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz p2, :cond_4a

    .line 410
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/tdo/showbox/http/Http$3$2;

    invoke-direct {v0, p0, p1}, Lcom/tdo/showbox/http/Http$3$2;-><init>(Lcom/tdo/showbox/http/Http$3;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    .line 418
    :cond_21
    iget-object p1, p0, Lcom/tdo/showbox/http/Http$3;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz p1, :cond_4a

    .line 419
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/tdo/showbox/http/Http$3$3;

    invoke-direct {p2, p0}, Lcom/tdo/showbox/http/Http$3$3;-><init>(Lcom/tdo/showbox/http/Http$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    .line 428
    :cond_32
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    .line 429
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    .line 430
    iget-object v0, p0, Lcom/tdo/showbox/http/Http$3;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    if-eqz v0, :cond_4a

    .line 431
    invoke-static {}, Lcom/tdo/showbox/http/Http;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tdo/showbox/http/Http$3$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tdo/showbox/http/Http$3$4;-><init>(Lcom/tdo/showbox/http/Http$3;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    :goto_4a
    return-void
.end method
