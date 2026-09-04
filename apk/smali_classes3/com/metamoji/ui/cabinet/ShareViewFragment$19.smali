.class Lcom/metamoji/ui/cabinet/ShareViewFragment$19;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->tryUserLogin(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2412
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$19;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2415
    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez p1, :cond_0

    .line 2417
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$19;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
