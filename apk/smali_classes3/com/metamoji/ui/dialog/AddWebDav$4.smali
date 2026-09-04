.class Lcom/metamoji/ui/dialog/AddWebDav$4;
.super Ljava/lang/Object;
.source "AddWebDav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/AddWebDav;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/AddWebDav;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$qhg73QMw9BvzlanL6ivZqJX8Ee8(Lcom/metamoji/ui/dialog/AddWebDav$4;Ljava/lang/String;Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/AddWebDav$4;->lambda$run$0(Ljava/lang/String;Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/ui/dialog/AddWebDav;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/metamoji/ui/dialog/AddWebDav$4;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav$4;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/AddWebDav$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-static {p3, p1, v0}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 200
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/dialog/AddWebDav$4$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/dialog/AddWebDav$4$1;-><init>(Lcom/metamoji/ui/dialog/AddWebDav$4;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p3, Lcom/metamoji/ui/dialog/AddWebDav$4$2;

    invoke-direct {p3, p0, p2}, Lcom/metamoji/ui/dialog/AddWebDav$4$2;-><init>(Lcom/metamoji/ui/dialog/AddWebDav$4;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 217
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 195
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/metamoji/ui/dialog/AddWebDav$4;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/AddWebDav$4;->val$view:Landroid/view/View;

    new-instance v3, Lcom/metamoji/ui/dialog/AddWebDav$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/metamoji/ui/dialog/AddWebDav$4$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/AddWebDav$4;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
