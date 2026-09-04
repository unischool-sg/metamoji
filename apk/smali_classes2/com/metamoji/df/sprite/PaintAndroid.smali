.class public Lcom/metamoji/df/sprite/PaintAndroid;
.super Ljava/lang/Object;
.source "PaintAndroid.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Paint;


# instance fields
.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/PaintAndroid;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/df/sprite/PaintAndroid;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/metamoji/df/sprite/PaintAndroid;->paint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/metamoji/df/sprite/PaintAndroid;->paint:Landroid/graphics/Paint;

    return-void
.end method
