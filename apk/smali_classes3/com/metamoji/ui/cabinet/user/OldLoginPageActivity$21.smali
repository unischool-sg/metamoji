.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->changeCameraDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1850
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1857
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21$1;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
