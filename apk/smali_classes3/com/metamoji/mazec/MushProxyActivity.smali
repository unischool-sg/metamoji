.class public Lcom/metamoji/mazec/MushProxyActivity;
.super Landroid/app/Activity;
.source "MushProxyActivity.java"


# static fields
.field public static final MUSH_ACTION:Ljava/lang/String; = "com.adamrocker.android.simeji.ACTION_INTERCEPT"

.field public static final MUSH_CATEGORY:Ljava/lang/String; = "com.adamrocker.android.simeji.REPLACE"

.field public static final REPLACE_KEY:Ljava/lang/String; = "replace_key"

.field public static final RESULT_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static hasMushIntents(Landroid/content/Context;)Z
    .locals 2

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    const-string v1, "com.adamrocker.android.simeji.ACTION_INTERCEPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v1, "com.adamrocker.android.simeji.REPLACE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 67
    const-string p1, "replace_key"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/MazecIms;->setMushResult(Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/MushProxyActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MushProxyActivity;->setVisible(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/mazec/MushProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string v1, "replace_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 49
    const-string v3, "com.adamrocker.android.simeji.ACTION_INTERCEPT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v3, "com.adamrocker.android.simeji.REPLACE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/mazec/MushProxyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/mazec/MushProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
