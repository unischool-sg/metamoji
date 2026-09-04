.class Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$3;
.super Ljava/lang/Object;
.source "HwrCandidatesPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$3;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
