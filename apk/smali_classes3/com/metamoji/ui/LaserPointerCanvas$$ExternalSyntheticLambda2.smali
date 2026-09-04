.class public final synthetic Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/LaserPointerCanvas;

.field public final synthetic f$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

.field public final synthetic f$2:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/LaserPointerCanvas;

    iput-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iput-object p3, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/LaserPointerCanvas;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas;->$r8$lambda$8RcG3CsPo2IkFUj1g7Vyl__biKE(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V

    return-void
.end method
