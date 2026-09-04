.class public final synthetic Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

.field public final synthetic f$1:Lcom/metamoji/un/draw2/module/selection/DrSelection;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    iput-boolean p3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->$r8$lambda$QtdGinKI0k4l0YEQm4Rqiqvo09w(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    return-void
.end method
