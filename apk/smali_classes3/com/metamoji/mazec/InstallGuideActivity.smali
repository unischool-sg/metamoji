.class public Lcom/metamoji/mazec/InstallGuideActivity;
.super Landroid/app/Activity;
.source "InstallGuideActivity.java"

# interfaces
.implements Lcom/metamoji/mazec/LangResouceManager$Listener;


# static fields
.field private static final GLOBAL_SUPPORT_URI:Ljava/lang/String; = "https://getsatisfaction.com/mazec"

.field private static final TWITTER_URI:Ljava/lang/String; = "http://www.twitter.com/androidmazecj/"

.field private static final WEBSITE_URI:Ljava/lang/String; = "https://product.metamoji.com/android_top/mazec3/support/"


# instance fields
.field mBtnImportFrom7notes:Landroid/widget/TextView;

.field mBtnImportFromBeta:Landroid/widget/TextView;

.field mBtnImportFromTrial:Landroid/widget/TextView;

.field mDataImporter:Lcom/metamoji/mazec/DataImporter;


# direct methods
.method static bridge synthetic -$$Nest$mshowSettings(Lcom/metamoji/mazec/InstallGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/InstallGuideActivity;->showSettings()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPackageContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x2

    .line 382
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/InstallGuideActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private hideView(Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isInstalledPackage(Ljava/lang/String;)Z
    .locals 2

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/InstallGuideActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 261
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setupImportButtton(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1

    .line 277
    new-instance v0, Lcom/metamoji/mazec/InstallGuideActivity$6;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/mazec/InstallGuideActivity$6;-><init>(Lcom/metamoji/mazec/InstallGuideActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private showSettings()V
    .locals 2

    .line 610
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 611
    const-class v1, Lcom/metamoji/mazec/MazecPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/InstallGuideActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected importDataFrom(Ljava/lang/String;)V
    .locals 2

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mDataImporter:Lcom/metamoji/mazec/DataImporter;

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->initialize()V

    .line 290
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromBeta:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromTrial:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFrom7notes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 296
    new-instance v0, Lcom/metamoji/mazec/DataImporter;

    new-instance v1, Lcom/metamoji/mazec/InstallGuideActivity$7;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/InstallGuideActivity$7;-><init>(Lcom/metamoji/mazec/InstallGuideActivity;)V

    invoke-direct {v0, p1, p0, v1}, Lcom/metamoji/mazec/DataImporter;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/metamoji/mazec/DataImporter$StatusListener;)V

    iput-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mDataImporter:Lcom/metamoji/mazec/DataImporter;

    .line 371
    invoke-virtual {v0}, Lcom/metamoji/mazec/DataImporter;->start()V

    .line 374
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initialLanguagesInstalled()V
    .locals 4

    .line 618
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 619
    invoke-virtual {v0, v1, v1}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 620
    invoke-static {v3}, Lcom/metamoji/mazec/MazecConfig;->isUserWordAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    iget-object v2, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromBeta:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 622
    iget-object v2, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromTrial:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 623
    iget-object v2, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFrom7notes:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 627
    :cond_1
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/LangResouceManager;->removeListener(Lcom/metamoji/mazec/LangResouceManager$Listener;)V

    return-void
.end method

.method public isActivated()Z
    .locals 2

    .line 470
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/mazec/InstallGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 75
    const-string p1, "layout.install_guide_main"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->setContentView(I)V

    .line 77
    const-string p1, "id.input_form"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 78
    new-instance v0, Lcom/metamoji/mazec/InstallGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/InstallGuideActivity$1;-><init>(Lcom/metamoji/mazec/InstallGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    const-string p1, "id.to_lang_setting_button"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 86
    new-instance v0, Lcom/metamoji/mazec/InstallGuideActivity$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/InstallGuideActivity$2;-><init>(Lcom/metamoji/mazec/InstallGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const-string p1, "id.to_mazec_setting_button"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Lcom/metamoji/mazec/InstallGuideActivity$3;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/InstallGuideActivity$3;-><init>(Lcom/metamoji/mazec/InstallGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_0
    const-string p1, "id.button_import_from_beta"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromBeta:Landroid/widget/TextView;

    .line 124
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->PREMIUM:Lcom/metamoji/mazec/BuildOption$ProductType;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 125
    const-string p1, "com.metamoji.mazecbeta"

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->isInstalledPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromBeta:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, v3}, Lcom/metamoji/mazec/InstallGuideActivity;->setupImportButtton(Landroid/widget/TextView;Ljava/lang/String;Z)V

    move p1, v1

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromBeta:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move p1, v3

    .line 134
    :goto_0
    const-string v0, "id.button_import_from_trial"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromTrial:Landroid/widget/TextView;

    .line 135
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v4, Lcom/metamoji/mazec/BuildOption$ProductType;->PREMIUM:Lcom/metamoji/mazec/BuildOption$ProductType;

    if-ne v0, v4, :cond_2

    .line 136
    const-string v0, "com.metamoji.mazectrial"

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/InstallGuideActivity;->isInstalledPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromTrial:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0, v3}, Lcom/metamoji/mazec/InstallGuideActivity;->setupImportButtton(Landroid/widget/TextView;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_1

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromTrial:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 145
    :goto_1
    const-string v4, "id.button_import_from_7notes"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFrom7notes:Landroid/widget/TextView;

    .line 146
    const-string v4, "com.sevenknowledge.sevennotesproduct"

    invoke-direct {p0, v4}, Lcom/metamoji/mazec/InstallGuideActivity;->isInstalledPackage(Ljava/lang/String;)Z

    move-result v5

    .line 150
    iget-object v6, p0, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFrom7notes:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 147
    invoke-direct {p0, v6, v4, v3}, Lcom/metamoji/mazec/InstallGuideActivity;->setupImportButtton(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v3

    :goto_2
    if-nez p1, :cond_4

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 154
    const-string p1, "id.import_line"

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->hideView(Ljava/lang/String;)V

    .line 181
    :cond_4
    const-string p1, "id.website_button"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 183
    new-instance v0, Lcom/metamoji/mazec/InstallGuideActivity$4;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/InstallGuideActivity$4;-><init>(Lcom/metamoji/mazec/InstallGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_5
    const-string p1, "id.twitter_button"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 210
    new-instance v0, Lcom/metamoji/mazec/InstallGuideActivity$5;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/InstallGuideActivity$5;-><init>(Lcom/metamoji/mazec/InstallGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_6
    const-string p1, "id.global_support_line"

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->hideView(Ljava/lang/String;)V

    .line 219
    const-string p1, "id.global_support_message"

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->hideView(Ljava/lang/String;)V

    .line 220
    const-string p1, "id.global_support_button"

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->hideView(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
