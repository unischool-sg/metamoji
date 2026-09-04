.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$4;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
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

    .line 667
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$4;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$4;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 670
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter$4;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
