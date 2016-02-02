#!/bin/sh

echo "\n\n*Check whether the gulp is installed in global:"

gulp -v >& /dev/null

if [ $? -eq 0 ];then
    echo "\n*gulp has been installed"
else
    echo "\n*gulp not installed, now install gulp -g"
    npm install gulp -g
fi


echo "\n\n*Check whether the cnpm is installed:"

cnpm >& /dev/null

if [ $? -eq 0 ];then
    echo "\n*cnpm has been installed"
else
    echo "\n*cnpm not installed, now install cnpm -g"
    npm install -g cnpm --registry=https://registry.npm.taobao.org
fi

echo "\n*Now install gulp-sass by cnpm:\n"
cnpm install gulp-sass

if [ $? -eq 0 ];then
    echo "'\n\n*Install gulp-sass Completed!"
else
    echo "\n\n*Install gulp-sass Failed! \n*You need install gulp-sass manually!"
fi


# copy gulpfile.js if not exist
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

gulpfile_src="gulp/gulpfile.js"

gulpfile_path="./gulpfile.js"


if [ ! -f "$gulpfile_path" ]; then
    cp $script_dir/$gulpfile_src $gulpfile_path
    echo "\n*Generated gulpfile.js Into CWD\n"
fi


echo "\n\n\n     === * ==="

echo "\n\nGulpman Install Succeed!\nNow you can use the gulpman module in your gulpfile.js'"

echo "\n\n*some features:\nmodular structure\nauto progresss\nscss\nes6\nReact\nupdate browserify\njs/css/image minify\nrev-md5"

echo "\n\n*API Detail: https://github.com/xunuoi/gulpman"
echo "\n*Any Question: \n  xunuoi@163.com\n  xwlxyjk@gmail.com\n\n"

echo "     === * ===\n\n\n\n"

