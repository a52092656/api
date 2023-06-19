# classes3.dex

.class Lcom/tdo/showbox/http/Http$3$1;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/Http$3;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdo/showbox/http/Http$3;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/Http$3;Ljava/lang/String;)V
    .registers 3

    .line 394
    iput-object p1, p0, Lcom/tdo/showbox/http/Http$3$1;->this$0:Lcom/tdo/showbox/http/Http$3;

    iput-object p2, p0, Lcom/tdo/showbox/http/Http$3$1;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/tdo/showbox/http/Http$3$1;->this$0:Lcom/tdo/showbox/http/Http$3;

    iget-object v0, v0, Lcom/tdo/showbox/http/Http$3;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    iget-object v1, p0, Lcom/tdo/showbox/http/Http$3$1;->val$error:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/tdo/showbox/http/RequestCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
