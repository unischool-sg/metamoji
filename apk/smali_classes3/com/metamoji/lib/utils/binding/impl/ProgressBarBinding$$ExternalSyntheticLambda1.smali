.class public final synthetic Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroid/widget/ProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ProgressBar;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->connect$lambda$2(Landroid/widget/ProgressBar;I)V

    return-void
.end method
