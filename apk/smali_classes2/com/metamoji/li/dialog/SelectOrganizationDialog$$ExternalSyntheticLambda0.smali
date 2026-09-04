.class public final synthetic Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->createBodyView$lambda$7$lambda$6$lambda$5(Lcom/metamoji/li/dialog/SelectOrganizationDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
