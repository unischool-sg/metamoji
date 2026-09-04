.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2$1;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForPreRestoreCollaboDocument.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2$1;->this$2:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 86
    iget-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2$1;->this$2:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;

    iget-object p1, p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$cancelAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
