.class Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;
.super Ljava/util/TimerTask;
.source "ScSelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote$3;Landroid/view/View;)V
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

    .line 779
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->this$1:Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 783
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$3$1$1;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote$3$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
