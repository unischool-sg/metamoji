.class public final synthetic Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ArrayAdapter;

.field public final synthetic f$1:Lcom/metamoji/li/view/panel/LoginSimpleFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ArrayAdapter;Lcom/metamoji/li/view/panel/LoginSimpleFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ArrayAdapter;

    iput-object p2, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/li/view/panel/LoginSimpleFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/metamoji/li/view/panel/LoginSimpleFragment$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/li/view/panel/LoginSimpleFragment;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/metamoji/li/view/panel/LoginSimpleFragment;->onSelectIdNumber$lambda$6$lambda$5(Landroid/widget/ArrayAdapter;Lcom/metamoji/li/view/panel/LoginSimpleFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
