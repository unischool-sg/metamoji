.class Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;
.super Ljava/lang/Object;
.source "NsCollaboModeViewBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonHighlighter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    const/high16 p2, 0x3f000000    # 0.5f

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
