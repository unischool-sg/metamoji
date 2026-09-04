.class public final synthetic Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->onCreateDialog$lambda$9$lambda$8(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
