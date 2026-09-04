.class Lcom/metamoji/ns/NsCollaboCommand$17;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByApplication([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$addressArray:[Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1457
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$17;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$17;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 1464
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$17;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$17;->val$addressArray:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/metamoji/nt/NtShare;->shareAsAtshare(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
