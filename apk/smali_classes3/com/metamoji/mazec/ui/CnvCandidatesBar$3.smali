.class Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;
.super Ljava/lang/Object;
.source "CnvCandidatesBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/CnvCandidatesBar;->init(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTouched:Z

.field final synthetic this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;->mTouched:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v2, 0x0

    cmpg-float v3, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gtz v3, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    cmpg-float v1, v2, p2

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    move p2, v5

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;->mTouched:Z

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 150
    iput-boolean v4, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;->mTouched:Z

    if-ne v0, v5, :cond_4

    if-eqz p2, :cond_4

    .line 152
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->openCandidatesView()Z

    goto :goto_1

    .line 137
    :cond_3
    iput-boolean v5, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBar$3;->mTouched:Z

    .line 138
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    :goto_1
    return v5
.end method
