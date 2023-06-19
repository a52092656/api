# classes3.dex

.class Lcom/tdo/showbox/http/Http$9$2;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/Http$9;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdo/showbox/http/Http$9;

.field final synthetic val$t:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/Http$9;Ljava/lang/String;)V
    .registers 3

    .line 654
    iput-object p1, p0, Lcom/tdo/showbox/http/Http$9$2;->this$0:Lcom/tdo/showbox/http/Http$9;

    iput-object p2, p0, Lcom/tdo/showbox/http/Http$9$2;->val$t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/tdo/showbox/http/Http$9$2;->this$0:Lcom/tdo/showbox/http/Http$9;

    iget-object v0, v0, Lcom/tdo/showbox/http/Http$9;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    iget-object v1, p0, Lcom/tdo/showbox/http/Http$9$2;->val$t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tdo/showbox/http/RequestCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
