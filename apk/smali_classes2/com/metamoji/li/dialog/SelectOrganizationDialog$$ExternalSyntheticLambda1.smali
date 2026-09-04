.class public final synthetic Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->onPositive$lambda$1(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V

    return-void
.end method
