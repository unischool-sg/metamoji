.class public Lcom/metamoji/mazecapi/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# static fields
.field public static final DELTA_DEFAULT:D = 0.75


# instance fields
.field private _attrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private _delta:D

.field private _penAttrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private _penInfo:Lcom/metamoji/mazecapi/StrokePenInfo;

.field private _points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private _style:Lcom/metamoji/mazecapi/StrokeStyle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 16
    iput-wide v0, p0, Lcom/metamoji/mazecapi/Stroke;->_delta:D

    return-void
.end method


# virtual methods
.method public getDelta()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/metamoji/mazecapi/Stroke;->_delta:D

    return-wide v0
.end method

.method public getPenAttr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/metamoji/mazecapi/Stroke;->_penAttrs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPenInfo()Lcom/metamoji/mazecapi/StrokePenInfo;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/mazecapi/Stroke;->_penInfo:Lcom/metamoji/mazecapi/StrokePenInfo;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/metamoji/mazecapi/Stroke;->_points:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentAttr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/metamoji/mazecapi/Stroke;->_attrs:Ljava/util/List;

    return-object v0
.end method

.method public getStyle()Lcom/metamoji/mazecapi/StrokeStyle;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/mazecapi/Stroke;->_style:Lcom/metamoji/mazecapi/StrokeStyle;

    return-object v0
.end method

.method public setPenInfo(Lcom/metamoji/mazecapi/StrokePenInfo;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/metamoji/mazecapi/Stroke;->_penInfo:Lcom/metamoji/mazecapi/StrokePenInfo;

    return-void
.end method

.method public setPoints(DLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-wide p1, p0, Lcom/metamoji/mazecapi/Stroke;->_delta:D

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/mazecapi/Stroke;->_points:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/metamoji/mazecapi/Stroke;->_attrs:Ljava/util/List;

    goto :goto_0

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/metamoji/mazecapi/Stroke;->_attrs:Ljava/util/List;

    :goto_0
    if-eqz p5, :cond_1

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/mazecapi/Stroke;->_penAttrs:Ljava/util/ArrayList;

    return-void

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/metamoji/mazecapi/Stroke;->_penAttrs:Ljava/util/ArrayList;

    return-void
.end method

.method public setPoints(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/mazecapi/Stroke;->setPoints(DLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setStyle(Lcom/metamoji/mazecapi/StrokeStyle;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/metamoji/mazecapi/Stroke;->_style:Lcom/metamoji/mazecapi/StrokeStyle;

    return-void
.end method
