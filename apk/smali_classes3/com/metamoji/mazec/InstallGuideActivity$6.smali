.class Lcom/metamoji/mazec/InstallGuideActivity$6;
.super Ljava/lang/Object;
.source "InstallGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/InstallGuideActivity;->setupImportButtton(Landroid/widget/TextView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/InstallGuideActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/InstallGuideActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity$6;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/InstallGuideActivity$6;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity$6;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity$6;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/InstallGuideActivity;->importDataFrom(Ljava/lang/String;)V

    return-void
.end method
