.class Lcom/metamoji/ns/NsCollaboCommand$19;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplication(Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$addressArray:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1559
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$19;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1562
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$19;->val$addressArray:[Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeUrlByApplicationDirect([Ljava/lang/String;)V

    return-void
.end method
