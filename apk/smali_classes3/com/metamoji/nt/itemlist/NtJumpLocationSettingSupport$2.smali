.class Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$2;
.super Ljava/lang/Object;
.source "NtJumpLocationSettingSupport.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->showContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$2;->this$0:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport$2;->this$0:Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;->-$$Nest$mhandleOnSelect(Lcom/metamoji/nt/itemlist/NtJumpLocationSettingSupport;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
