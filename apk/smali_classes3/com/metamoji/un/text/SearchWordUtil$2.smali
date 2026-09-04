.class Lcom/metamoji/un/text/SearchWordUtil$2;
.super Ljava/lang/Object;
.source "SearchWordUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/SearchWordUtil;->processAfterSearchText(Lcom/metamoji/un/text/UnTextUnit;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 884
    sget v0, Lcom/metamoji/noteanytime/R$string;->SearchText_Msg_NotFound:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->SEARCH_TEXT_MENU:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
