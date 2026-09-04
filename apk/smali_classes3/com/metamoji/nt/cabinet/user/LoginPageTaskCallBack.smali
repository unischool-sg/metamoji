.class public interface abstract Lcom/metamoji/nt/cabinet/user/LoginPageTaskCallBack;
.super Ljava/lang/Object;
.source "LoginPageTaskCallBack.java"


# static fields
.field public static final Key_CoLoginId:Ljava/lang/String; = "cologinid"

.field public static final Key_LoginName:Ljava/lang/String; = "loginname"

.field public static final Key_Password:Ljava/lang/String; = "password"


# virtual methods
.method public abstract OnClickCancelButton_LoginPageTaskCallBack()V
.end method

.method public abstract OnClickLoginButton_LoginPageTaskCallBack(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract OnClickReentryButton_LoginPageTaskCallBack()V
.end method

.method public abstract OnDestroyView_LoginPageTaskCallBack()V
.end method

.method public abstract OnDone_LoginPageTaskcallback()V
.end method
