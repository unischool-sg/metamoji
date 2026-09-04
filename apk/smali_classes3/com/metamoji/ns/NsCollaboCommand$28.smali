.class Lcom/metamoji/ns/NsCollaboCommand$28;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboReceiveAllData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 2419
    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboCommand;->collaboReceiveAllDataExec(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method
