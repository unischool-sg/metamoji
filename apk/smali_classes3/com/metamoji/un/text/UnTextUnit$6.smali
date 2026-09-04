.class Lcom/metamoji/un/text/UnTextUnit$6;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->setFocus(Lcom/metamoji/nt/NtFocusOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$activities:Lcom/metamoji/rb/RbConstants$Activity;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/rb/RbConstants$Activity;)V
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

    .line 2019
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$6;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$6;->val$activities:Lcom/metamoji/rb/RbConstants$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2022
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnit$6$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnit$6$1;-><init>(Lcom/metamoji/un/text/UnTextUnit$6;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method
