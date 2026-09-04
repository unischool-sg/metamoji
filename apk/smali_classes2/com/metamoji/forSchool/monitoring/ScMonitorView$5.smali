.class Lcom/metamoji/forSchool/monitoring/ScMonitorView$5;
.super Ljava/lang/Object;
.source "ScMonitorView.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorView;->handleStatusBtnTapped(Landroidx/fragment/app/FragmentActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 804
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$5;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 807
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$5;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->-$$Nest$mclearMonitorInfoViewControoler(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    return-void
.end method
