.class public final synthetic Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/LaserPointerCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/LaserPointerCanvas;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/LaserPointerCanvas;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/LaserPointerCanvas;

    check-cast p1, Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;

    invoke-static {v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->$r8$lambda$Kbdcf7ti3YWMCvvk9doGLTVuO-k(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;)V

    return-void
.end method
