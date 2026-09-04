.class public final synthetic Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->lambda$showAlertDialog$1(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
