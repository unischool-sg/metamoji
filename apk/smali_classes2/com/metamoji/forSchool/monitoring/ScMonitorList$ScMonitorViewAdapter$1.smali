.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorView;I)V
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

    .line 638
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 641
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    iget v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$1;->val$position:I

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->handleStatusBtnTapped(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method
