.class public final Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;
.super Landroid/database/DataSetObserver;
.source "SelectOrganizationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;",
        "Landroid/database/DataSetObserver;",
        "<init>",
        "(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V",
        "onChanged",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectOrganizationDialog$ListObserver;->this$0:Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-static {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$updateCustomHeight(Lcom/metamoji/li/dialog/SelectOrganizationDialog;)V

    return-void
.end method
