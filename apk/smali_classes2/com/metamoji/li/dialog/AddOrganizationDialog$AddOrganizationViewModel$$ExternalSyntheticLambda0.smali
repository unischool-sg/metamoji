.class public final synthetic Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/dialog/AddOrganizationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/dialog/AddOrganizationDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/AddOrganizationDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/li/dialog/AddOrganizationDialog;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    invoke-static {v0, p1}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->addOrganization$lambda$4$lambda$3(Lcom/metamoji/li/dialog/AddOrganizationDialog;Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    return-object p1
.end method
