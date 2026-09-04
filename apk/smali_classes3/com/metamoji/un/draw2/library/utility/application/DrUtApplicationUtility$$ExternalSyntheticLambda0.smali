.class public final synthetic Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 0
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->lambda$showAlertDialog$0(ILjava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
