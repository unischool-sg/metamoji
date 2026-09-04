.class public final synthetic Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

    iput-object p2, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;->f$2:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/flip/UnFlipUnitManager;

    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/un/flip/UnFlipUnitManager$$ExternalSyntheticLambda0;->f$2:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/flip/UnFlipUnitManager;->prepareToAnimation$lambda$4(Lcom/metamoji/un/flip/UnFlipUnitManager;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
