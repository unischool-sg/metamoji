.class public Lcom/metamoji/ui/WebPageActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "WebPageActivity.java"


# static fields
.field static final ALLOWED_INTENT_FLAGS:I = 0x3c083810

.field public static final KEY_IS_REPLACE:Ljava/lang/String; = "isReplace"

.field public static final KEY_READ_ONLY:Ljava/lang/String; = "readOnly"

.field public static final KEY_UNITID:Ljava/lang/String; = "unitId"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static capturedBlob:Lcom/metamoji/cm/Blob;


# instance fields
.field private _back:Landroid/widget/ImageButton;

.field private _editText:Landroid/widget/EditText;

.field private _forward:Landroid/widget/ImageButton;

.field private _isReplace:Z

.field private _readOnly:Z

.field private _unitId:Ljava/lang/String;

.field private _url:Ljava/lang/String;

.field private _webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$kyrsJ9LUZ0CSRqK5EQSHinBFEbc(Lcom/metamoji/ui/WebPageActivity;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/WebPageActivity;->lambda$captureAndFinish$0(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fget_back(Lcom/metamoji/ui/WebPageActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/WebPageActivity;->_back:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_editText(Lcom/metamoji/ui/WebPageActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/WebPageActivity;->_editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_forward(Lcom/metamoji/ui/WebPageActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/WebPageActivity;->_forward:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_readOnly(Lcom/metamoji/ui/WebPageActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/WebPageActivity;->_readOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_url(Lcom/metamoji/ui/WebPageActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_url(Lcom/metamoji/ui/WebPageActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureAndFinish(Lcom/metamoji/ui/WebPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/WebPageActivity;->captureAndFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableButton(Lcom/metamoji/ui/WebPageActivity;Landroid/widget/ImageButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/WebPageActivity;->enableButton(Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableButton(Lcom/metamoji/ui/WebPageActivity;Lcom/metamoji/ui/common/UiButtonHeader;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/WebPageActivity;->enableButton(Lcom/metamoji/ui/common/UiButtonHeader;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_unitId:Ljava/lang/String;

    return-void
.end method

.method private captureAndFinish()V
    .locals 7

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 446
    iget-object v1, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    .line 447
    new-array v2, v2, [I

    .line 448
    iget-object v3, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 449
    aget v3, v2, v3

    const/4 v4, 0x1

    .line 450
    aget v2, v2, v4

    .line 451
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 452
    invoke-virtual {p0}, Lcom/metamoji/ui/WebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 455
    new-instance v6, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {v6, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/metamoji/ui/WebPageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v4}, Lcom/metamoji/ui/WebPageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/WebPageActivity;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/os/Handler;

    .line 471
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 455
    invoke-static {v5, v6, v4, v0, v1}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 475
    const-string v1, "WebPageActivity.captureAndFinish"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private enableButton(Landroid/widget/ImageButton;Z)V
    .locals 0

    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3e99999a    # 0.3f

    .line 97
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method private enableButton(Lcom/metamoji/ui/common/UiButtonHeader;Z)V
    .locals 0

    .line 101
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButtonHeader;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3e99999a    # 0.3f

    .line 102
    :goto_0
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButtonHeader;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$captureAndFinish$0(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 461
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    sput-object p1, Lcom/metamoji/ui/WebPageActivity;->capturedBlob:Lcom/metamoji/cm/Blob;

    .line 462
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 463
    const-string/jumbo p2, "url"

    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object p2, p0, Lcom/metamoji/ui/WebPageActivity;->_unitId:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 465
    const-string/jumbo v0, "unitId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p2, -0x1

    .line 467
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/WebPageActivity;->setResult(ILandroid/content/Intent;)V

    .line 468
    invoke-virtual {p0}, Lcom/metamoji/ui/WebPageActivity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 572
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 106
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 108
    invoke-static {p0}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 109
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/ui/WebPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    const-string v1, "readOnly"

    const-string v2, "isReplace"

    const-string/jumbo v3, "unitId"

    const-string/jumbo v4, "url"

    if-nez p1, :cond_0

    .line 113
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ui/WebPageActivity;->_unitId:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/ui/WebPageActivity;->_isReplace:Z

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/WebPageActivity;->_readOnly:Z

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    .line 121
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_unitId:Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/WebPageActivity;->_isReplace:Z

    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/WebPageActivity;->_readOnly:Z

    .line 128
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->activity_web_page:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->setContentView(I)V

    .line 130
    sget v0, Lcom/metamoji/noteanytime/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->setupWindowInsetsListener(Landroid/view/View;)V

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/ui/WebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 137
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->webpage_edit_title:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    .line 138
    iget-object v1, p0, Lcom/metamoji/ui/WebPageActivity;->_unitId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 139
    iget-boolean v1, p0, Lcom/metamoji/ui/WebPageActivity;->_isReplace:Z

    if-eqz v1, :cond_2

    .line 140
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OPEN_IN_BROWSER:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    goto :goto_1

    .line 142
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_AddWebPage:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    goto :goto_1

    .line 145
    :cond_3
    iget-boolean v1, p0, Lcom/metamoji/ui/WebPageActivity;->_readOnly:Z

    if-eqz v1, :cond_4

    .line 146
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OPEN_IN_BROWSER:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    goto :goto_1

    .line 148
    :cond_4
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_AddWebPage:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 153
    :goto_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/ui/WebPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$color;->button_header_blue:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTextColor(I)V

    .line 155
    sget v1, Lcom/metamoji/noteanytime/R$id;->done:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 158
    iget-boolean v3, p0, Lcom/metamoji/ui/WebPageActivity;->_readOnly:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 159
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 160
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CLOSE:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    goto :goto_2

    .line 162
    :cond_5
    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 163
    iget-boolean v0, p0, Lcom/metamoji/ui/WebPageActivity;->_isReplace:Z

    if-eqz v0, :cond_6

    .line 164
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_BUTTON_TITLE_CHANGE:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 169
    :cond_6
    :goto_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->web_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    .line 171
    sget v0, Lcom/metamoji/noteanytime/R$id;->done:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-direct {p0, v0, v5}, Lcom/metamoji/ui/WebPageActivity;->enableButton(Lcom/metamoji/ui/common/UiButtonHeader;Z)V

    .line 172
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 175
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/metamoji/ui/WebPageActivity$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$1;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 270
    sget v0, Lcom/metamoji/noteanytime/R$id;->text_url:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_editText:Landroid/widget/EditText;

    .line 271
    iget-object v1, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_editText:Landroid/widget/EditText;

    new-instance v1, Lcom/metamoji/ui/WebPageActivity$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$2;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 287
    sget v0, Lcom/metamoji/noteanytime/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_back:Landroid/widget/ImageButton;

    .line 288
    new-instance v1, Lcom/metamoji/ui/WebPageActivity$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$3;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    sget v0, Lcom/metamoji/noteanytime/R$id;->forward:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_forward:Landroid/widget/ImageButton;

    .line 298
    new-instance v1, Lcom/metamoji/ui/WebPageActivity$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$4;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    sget v0, Lcom/metamoji/noteanytime/R$id;->bookmark:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiImageButton;

    .line 309
    new-instance v1, Lcom/metamoji/ui/WebPageActivity$5;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$5;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    sget v0, Lcom/metamoji/noteanytime/R$id;->qrCodeReader:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiImageButton;

    .line 332
    new-instance v1, Lcom/metamoji/ui/WebPageActivity$6;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$6;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-boolean v1, p0, Lcom/metamoji/ui/WebPageActivity;->_readOnly:Z

    if-nez v1, :cond_8

    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 359
    :cond_7
    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    goto :goto_4

    .line 357
    :cond_8
    :goto_3
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 363
    :goto_4
    sget v0, Lcom/metamoji/noteanytime/R$id;->openInBrowser:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiImageButton;

    .line 364
    new-instance v1, Lcom/metamoji/ui/WebPageActivity$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$7;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 381
    sget v0, Lcom/metamoji/noteanytime/R$id;->done:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/WebPageActivity$8;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$8;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    sget v0, Lcom/metamoji/noteanytime/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/WebPageActivity$9;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WebPageActivity$9;-><init>(Lcom/metamoji/ui/WebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppEditWebUnitUrl:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_9

    .line 412
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 413
    sget v0, Lcom/metamoji/noteanytime/R$id;->bookmark:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 414
    sget v0, Lcom/metamoji/noteanytime/R$id;->qrCodeReader:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 417
    sget v0, Lcom/metamoji/noteanytime/R$id;->bookmark:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 418
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUseQRCodeReader:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 419
    sget v0, Lcom/metamoji/noteanytime/R$id;->qrCodeReader:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 421
    :cond_a
    sget v0, Lcom/metamoji/noteanytime/R$id;->qrCodeReader:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-nez p1, :cond_b

    .line 428
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity;->_back:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/metamoji/ui/WebPageActivity;->enableButton(Landroid/widget/ImageButton;Z)V

    .line 429
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity;->_forward:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/metamoji/ui/WebPageActivity;->enableButton(Landroid/widget/ImageButton;Z)V

    .line 431
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 527
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    .line 528
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 530
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 531
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 532
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 534
    iput-object v1, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 587
    invoke-virtual {p0}, Lcom/metamoji/ui/WebPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 590
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 580
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 581
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 542
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 543
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 544
    iget-object v0, p0, Lcom/metamoji/ui/WebPageActivity;->_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v0, "unitId"

    iget-object v1, p0, Lcom/metamoji/ui/WebPageActivity;->_unitId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "isReplace"

    iget-boolean v1, p0, Lcom/metamoji/ui/WebPageActivity;->_isReplace:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    const-string v0, "readOnly"

    iget-boolean v1, p0, Lcom/metamoji/ui/WebPageActivity;->_readOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 439
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
