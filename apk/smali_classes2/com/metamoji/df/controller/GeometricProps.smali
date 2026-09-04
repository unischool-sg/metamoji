.class public Lcom/metamoji/df/controller/GeometricProps;
.super Ljava/lang/Object;
.source "GeometricProps.java"


# instance fields
.field public contentScale:Ljava/lang/Float;

.field public origin:Landroid/graphics/PointF;

.field public rotation:Ljava/lang/Float;

.field public size:Lcom/metamoji/cm/SizeF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 20
    iput-object v0, p0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 21
    iput-object v0, p0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 22
    iput-object v0, p0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 27
    iput-object p2, p0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 28
    iput-object p3, p0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 29
    iput-object p4, p0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    return-void
.end method
