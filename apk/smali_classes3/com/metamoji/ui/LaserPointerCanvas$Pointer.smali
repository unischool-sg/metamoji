.class Lcom/metamoji/ui/LaserPointerCanvas$Pointer;
.super Ljava/lang/Object;
.source "LaserPointerCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/LaserPointerCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pointer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;
    }
.end annotation


# instance fields
.field private _alpha:F

.field private _canceled:Z

.field private _color:I

.field private _detentionPoints:I

.field private final _detentions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final _fadeouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private _headCap:Lcom/metamoji/df/sprite/Path;

.field private _last:Landroid/graphics/PointF;

.field private _lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

.field private _lastTick:J

.field private _locked:Z

.field private _paint:Lcom/metamoji/df/sprite/PaintSolid;

.field public _sid:Ljava/lang/String;

.field private final _sprite:Lcom/metamoji/df/sprite/Sprite;

.field private _tailCap:Lcom/metamoji/df/sprite/Path;

.field public detentionCount:I

.field public fadeoutDuration:D

.field final synthetic this$0:Lcom/metamoji/ui/LaserPointerCanvas;

.field public timeoutDuration:D

.field public width:D


# direct methods
.method static bridge synthetic -$$Nest$fget_alpha(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_alpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_headCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/Path;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_headCap:Lcom/metamoji/df/sprite/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_last(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_last:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_paint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/PaintSolid;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_paint:Lcom/metamoji/df/sprite/PaintSolid;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_tailCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)Lcom/metamoji/df/sprite/Path;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_tailCap:Lcom/metamoji/df/sprite/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_headCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Lcom/metamoji/df/sprite/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_headCap:Lcom/metamoji/df/sprite/Path;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_lastTick(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastTick:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_tailCap(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Lcom/metamoji/df/sprite/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_tailCap:Lcom/metamoji/df/sprite/Path;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTimeout(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->checkTimeout(J)V

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/df/sprite/Sprite;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 773
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x1000000

    .line 786
    iput p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_color:I

    .line 787
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v0, p1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_paint:Lcom/metamoji/df/sprite/PaintSolid;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 790
    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->width:D

    .line 792
    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->fadeoutDuration:D

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 793
    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->timeoutDuration:D

    const/16 p1, 0x190

    .line 794
    iput p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->detentionCount:I

    const/4 p1, 0x1

    .line 803
    iput-boolean p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_locked:Z

    .line 818
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 819
    iput p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    .line 822
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    .line 774
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 775
    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 776
    iput-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_sid:Ljava/lang/String;

    return-void
.end method

.method private checkTimeout(J)V
    .locals 6

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 992
    iget-wide v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->timeoutDuration:D

    mul-double/2addr v2, v0

    double-to-long v0, v2

    .line 994
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastTick:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->end()V

    return-void

    .line 999
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1000
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    .line 1001
    iget-wide v4, v2, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->created:J

    sub-long v4, p1, v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    goto :goto_1

    .line 1005
    :cond_1
    iget-object v4, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1006
    iget v3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    iget v4, v2, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    const-wide/16 v3, 0x0

    .line 1007
    invoke-virtual {v2, v3, v4}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->startFadeout(D)V

    .line 1008
    iget-object v3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private createSegment(D)V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    .line 933
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->startFadeout()V

    .line 934
    new-instance v1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;-><init>(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;DLcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;)V

    iput-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    return-void
.end method

.method private startFadeout()V
    .locals 3

    .line 938
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-nez v0, :cond_0

    goto :goto_1

    .line 942
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    iget v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    iget v1, v1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    const/4 v0, 0x0

    .line 944
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    .line 946
    :goto_0
    iget v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    iget v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->detentionCount:I

    if-le v0, v1, :cond_1

    .line 948
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    .line 949
    iget v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    iget v2, v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    const-wide/16 v1, 0x0

    .line 950
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->startFadeout(D)V

    .line 951
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateLastSegment(Z)V
    .locals 3

    .line 960
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->erase(Lcom/metamoji/df/sprite/Graphics;)V

    if-nez p1, :cond_0

    .line 962
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 963
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {v2, v0, p1, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->draw(Lcom/metamoji/df/sprite/Graphics;ZZ)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 923
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->unlock()V

    .line 924
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 925
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 926
    iput v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    const/4 v0, 0x1

    .line 928
    iput-boolean v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_canceled:Z

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getParent()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method public draw()V
    .locals 9

    .line 970
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 971
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    const/4 v1, 0x0

    .line 972
    iput-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_tailCap:Lcom/metamoji/df/sprite/Path;

    .line 973
    iput-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_headCap:Lcom/metamoji/df/sprite/Path;

    .line 975
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 977
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-ne v5, v1, :cond_1

    move v7, v4

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    if-nez v5, :cond_2

    move v8, v4

    goto :goto_3

    :cond_2
    move v8, v3

    .line 978
    :goto_3
    invoke-virtual {v6, v0, v7, v8}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->draw(Lcom/metamoji/df/sprite/Graphics;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 981
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-ne v5, v1, :cond_4

    move v7, v4

    goto :goto_5

    :cond_4
    move v7, v3

    :goto_5
    if-nez v5, :cond_5

    move v8, v4

    goto :goto_6

    :cond_5
    move v8, v3

    .line 982
    :goto_6
    invoke-virtual {v6, v0, v7, v8}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->draw(Lcom/metamoji/df/sprite/Graphics;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 985
    :cond_6
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-eqz v1, :cond_8

    if-nez v5, :cond_7

    move v3, v4

    .line 986
    :cond_7
    invoke-virtual {v1, v0, v4, v3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->draw(Lcom/metamoji/df/sprite/Graphics;ZZ)V

    :cond_8
    return-void
.end method

.method public end()V
    .locals 6

    .line 902
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->unlock()V

    .line 903
    iget-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->fadeoutDuration:D

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v2

    .line 905
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    .line 906
    invoke-virtual {v5, v3, v4}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->startFadeout(D)V

    add-double/2addr v3, v0

    goto :goto_0

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 910
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 911
    iput v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentionPoints:I

    .line 913
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-nez v0, :cond_1

    return-void

    .line 917
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->startFadeout(D)V

    .line 918
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 919
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_color:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_sid:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_locked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_detentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFading()Z
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_canceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_locked:Z

    return v0
.end method

.method public lineTo(Landroid/graphics/PointF;D)V
    .locals 9

    .line 846
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->unlock()V

    const/4 v0, 0x0

    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 851
    iget-wide v5, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastTick:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 852
    iget-wide v5, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->fadeoutDuration:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    div-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_0

    .line 854
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->lineTo(Landroid/graphics/PointF;)V

    .line 855
    invoke-direct {p0, v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->updateLastSegment(Z)V

    goto :goto_0

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_last:Landroid/graphics/PointF;

    invoke-static {v1, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$smmid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 858
    iget-object v3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {v3, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->lineTo(Landroid/graphics/PointF;)V

    .line 859
    invoke-direct {p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->updateLastSegment(Z)V

    .line 862
    invoke-direct {p0, p2, p3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->createSegment(D)V

    .line 863
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->lineTo(Landroid/graphics/PointF;)V

    .line 864
    invoke-direct {p0, v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->updateLastSegment(Z)V

    .line 866
    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_last:Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {p2}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 869
    throw p1
.end method

.method public moveTo(Landroid/graphics/PointF;D)V
    .locals 0

    .line 838
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->unlock()V

    .line 839
    invoke-direct {p0, p2, p3}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->createSegment(D)V

    .line 840
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->moveTo(Landroid/graphics/PointF;)V

    const/4 p2, 0x1

    .line 841
    invoke-direct {p0, p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->updateLastSegment(Z)V

    .line 842
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_last:Landroid/graphics/PointF;

    return-void
.end method

.method public quadTo(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V
    .locals 9

    .line 873
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->unlock()V

    const/4 v0, 0x0

    .line 875
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 878
    iget-wide v5, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastTick:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 879
    iget-wide v5, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->fadeoutDuration:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    div-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_0

    .line 881
    iget-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->quadTo(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 882
    invoke-direct {p0, v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->updateLastSegment(Z)V

    goto :goto_0

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_last:Landroid/graphics/PointF;

    invoke-static {v1, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$smmid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 885
    invoke-static {p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$smmid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 886
    invoke-static {v1, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$smmid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 887
    iget-object v4, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {v4, v3, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->quadTo(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 888
    invoke-direct {p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->updateLastSegment(Z)V

    .line 891
    invoke-direct {p0, p3, p4}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->createSegment(D)V

    .line 892
    iget-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_lastSegment:Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->quadTo(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 893
    invoke-direct {p0, v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->updateLastSegment(Z)V

    .line 895
    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_last:Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {p2}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    .line 898
    throw p1
.end method

.method public setColor(I)V
    .locals 2

    .line 797
    iput p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_color:I

    .line 798
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_paint:Lcom/metamoji/df/sprite/PaintSolid;

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    ushr-int/lit8 p1, p1, 0x18

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 799
    iput p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_alpha:F

    return-void
.end method

.method tick(J)V
    .locals 4

    .line 1014
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;

    .line 1015
    invoke-virtual {v3, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer$Segment;->tick(J)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_fadeouts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    .line 835
    iput-boolean v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->_locked:Z

    return-void
.end method
