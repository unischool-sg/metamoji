.class public final synthetic Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$2:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p4, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$3:Z

    iput-object p5, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$2:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v3, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$3:Z

    iget-object v4, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/metamoji/cm/CmUtils;->lambda$yesNoDialog$1(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
