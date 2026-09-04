.class Lcom/metamoji/ui/dialog/ShareObjectInfoView$2$1;
.super Ljava/lang/Object;
.source "ShareObjectInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;

.field final synthetic val$finalDcUserNickNamesMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2$1;->val$finalDcUserNickNamesMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2$1;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2;->val$action:Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$2$1;->val$finalDcUserNickNamesMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;->action(Ljava/util/Map;)V

    return-void
.end method
