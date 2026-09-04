.class public Lcom/metamoji/ui/cabinet/CabinetSeparatorView;
.super Landroid/widget/ImageView;
.source "CabinetSeparatorView.java"


# instance fields
.field private _context:Landroid/content/Context;

.field private _gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;->_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;->_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;->_context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;->_gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method
