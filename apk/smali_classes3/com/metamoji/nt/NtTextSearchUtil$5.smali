.class Lcom/metamoji/nt/NtTextSearchUtil$5;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 813
    sget v0, Lcom/metamoji/noteanytime/R$string;->SearchText_Msg_NotFound:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->SEARCH_TEXT_MENU:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
