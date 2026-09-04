.class public Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;
.super Ljava/lang/Object;
.source "UiCurrentActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiCurrentActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityCallInfo"
.end annotation


# instance fields
.field private mCall:Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;

.field private mClazz:Ljava/lang/Class;

.field final synthetic this$0:Lcom/metamoji/ui/UiCurrentActivityManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/UiCurrentActivityManager;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;->this$0:Lcom/metamoji/ui/UiCurrentActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;->mCall:Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;

    .line 37
    iput-object p3, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;->mClazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public run(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 3

    const/4 v0, 0x1

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;->mClazz:Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    const-string p1, "UiCurrentActivityManager.runWithActivity (delayed execution) waiting for next chance."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 43
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;->mCall:Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;

    invoke-interface {v1, p1}, Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;->run(Landroidx/fragment/app/FragmentActivity;)V

    .line 44
    const-string p1, "UiCurrentActivityManager.runWithActivity (delayed execution) done."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    .line 51
    const-string v1, "UiCurrentActivityManager.runWithActivity (delayed execution) error."

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method
