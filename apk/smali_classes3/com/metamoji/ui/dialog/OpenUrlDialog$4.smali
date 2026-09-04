.class Lcom/metamoji/ui/dialog/OpenUrlDialog$4;
.super Ljava/lang/Object;
.source "OpenUrlDialog.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/OpenUrlDialog;->doneExecInner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

.field final synthetic val$resultArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/OpenUrlDialog;Ljava/util/List;)V
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

    .line 282
    iput-object p1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4;->val$resultArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 285
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/OpenUrlDialog$4$1;-><init>(Lcom/metamoji/ui/dialog/OpenUrlDialog$4;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
