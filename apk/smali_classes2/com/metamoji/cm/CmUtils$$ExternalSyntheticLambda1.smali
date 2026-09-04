.class public final synthetic Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;
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


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$2:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p4, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$2:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v3, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/metamoji/cm/CmUtils$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/metamoji/cm/CmUtils;->lambda$yesNoDialog$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
