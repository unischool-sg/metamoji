.class public final synthetic Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->lambda$removeDrawer$0(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V

    return-void
.end method
