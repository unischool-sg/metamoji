.class public final synthetic Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/CommandBase;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/CommandBase;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/CommandBase;

    iput-object p2, p0, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/lib/utils/CommandBase;

    iget-object v1, p0, Lcom/metamoji/lib/utils/CommandBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/lib/utils/CommandBase;->internalAttachView$lambda$0(Lcom/metamoji/lib/utils/CommandBase;Ljava/lang/Object;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
