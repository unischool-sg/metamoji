.class Landroidx/browser/customtabs/CustomTabsClient$3$6;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$3;->onActivityResized(IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;IILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 586
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$height:I

    iput p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$width:I

    iput-object p4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 590
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->this$1:Landroidx/browser/customtabs/CustomTabsClient$3;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$height:I

    iget v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$width:I

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityResized(IILandroid/os/Bundle;)V

    return-void
.end method
