.class Lcom/metamoji/ns/NsCollaboCommand$23;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByCustomApp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$distributeClass:Ljava/lang/String;

.field final synthetic val$distributePackage:Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1807
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$distributePackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$distributeClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    .line 1814
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$distributePackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$23;->val$distributeClass:Ljava/lang/String;

    const-string v3, "atdoc"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity;->handleSendToSrcApp(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
