.class Lcom/metamoji/mazec/InstallGuideActivity$7;
.super Ljava/lang/Object;
.source "InstallGuideActivity.java"

# interfaces
.implements Lcom/metamoji/mazec/DataImporter$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/InstallGuideActivity;->importDataFrom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/InstallGuideActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/InstallGuideActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity$7;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public statusChanged(II)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_d

    const/16 v1, 0xa

    if-eq p1, v1, :cond_c

    const/16 v1, 0xb

    if-eq p1, v1, :cond_a

    const/16 v1, 0x14

    if-eq p1, v1, :cond_9

    const/16 v1, 0x15

    if-eq p1, v1, :cond_7

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_6

    const/16 v1, 0xc9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xd2

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    .line 349
    const-string/jumbo p1, "string.import_lean_words_finished"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "string.import_learn_words_failed"

    :goto_0
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_3

    .line 345
    :cond_2
    const-string/jumbo p1, "string.import_lean_words_start"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_3

    :cond_3
    const/16 p1, -0xca

    if-eq p2, p1, :cond_5

    if-eqz p2, :cond_4

    .line 339
    const-string/jumbo p1, "string.import_user_words_failed"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_3

    .line 331
    :cond_4
    const-string/jumbo p1, "string.import_user_words_finished"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 335
    :cond_5
    const-string/jumbo p1, "string.import_user_words_partially"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 325
    :cond_6
    const-string/jumbo p1, "string.import_user_words_start"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_7
    if-nez p2, :cond_8

    .line 321
    const-string/jumbo p1, "string.import_user_dict_finished"

    goto :goto_1

    :cond_8
    const-string/jumbo p1, "string.import_user_dict_failed"

    :goto_1
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 317
    :cond_9
    const-string/jumbo p1, "string.import_user_dict_start"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_a
    if-nez p2, :cond_b

    .line 313
    const-string/jumbo p1, "string.import_preference_finished"

    goto :goto_2

    :cond_b
    const-string/jumbo p1, "string.import_preference_failed"

    :goto_2
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 309
    :cond_c
    const-string/jumbo p1, "string.import_preference_start"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 353
    :cond_d
    const-string/jumbo p1, "string.import_finished"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    .line 355
    iget-object p2, p0, Lcom/metamoji/mazec/InstallGuideActivity$7;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    iget-object p2, p2, Lcom/metamoji/mazec/InstallGuideActivity;->mDataImporter:Lcom/metamoji/mazec/DataImporter;

    if-eqz p2, :cond_f

    .line 356
    iget-object p2, p0, Lcom/metamoji/mazec/InstallGuideActivity$7;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    iget-object p2, p2, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromBeta:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 357
    iget-object p2, p0, Lcom/metamoji/mazec/InstallGuideActivity$7;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    iget-object p2, p2, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFromTrial:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 358
    iget-object p2, p0, Lcom/metamoji/mazec/InstallGuideActivity$7;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    iget-object p2, p2, Lcom/metamoji/mazec/InstallGuideActivity;->mBtnImportFrom7notes:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 360
    iget-object p2, p0, Lcom/metamoji/mazec/InstallGuideActivity$7;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    const/4 v1, 0x0

    iput-object v1, p2, Lcom/metamoji/mazec/InstallGuideActivity;->mDataImporter:Lcom/metamoji/mazec/DataImporter;

    goto :goto_3

    .line 305
    :cond_e
    const-string/jumbo p1, "string.import_start"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    :cond_f
    :goto_3
    if-eqz p1, :cond_10

    .line 366
    iget-object p2, p0, Lcom/metamoji/mazec/InstallGuideActivity$7;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/InstallGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_10
    return-void
.end method
